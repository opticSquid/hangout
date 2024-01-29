import { Module } from '@nestjs/common';
import { AppService } from './app.service';
import { ConfigModule } from '@nestjs/config';
import { ClientsModule, Transport } from '@nestjs/microservices';
import { AppController } from './app.controller';
import { EmailModule } from './email/email.module';
import { JwtModule } from './jwt/jwt.module';

@Module({
  imports: [
    // nest js config module configuration
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    // kafka producer configuration
    ClientsModule.register([
      {
        name: 'AUTH_SERVICE',
        transport: Transport.KAFKA,
        options: {
          client: {
            clientId: 'auth',
            brokers: ['localhost:9092'],
          },
          // this is the consumer group to which we are going to produce event
          consumer: {
            groupId: 'auth-service-group-server',
          },
        },
      },
    ]),
    EmailModule,
    JwtModule,
  ],
  providers: [AppService],
  controllers: [AppController],
})
export class AppModule {}
