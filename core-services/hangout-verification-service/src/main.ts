import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { MicroserviceOptions, Transport } from '@nestjs/microservices';

async function bootstrap() {
  const app = await NestFactory.createMicroservice<MicroserviceOptions>(
    AppModule,
    {
      transport: Transport.KAFKA,
      options: {
        client: {
          brokers: ['localhost:9092'],
        },
        // this is this service's group-id
        consumer: {
          groupId: 'verification-service-group',
          allowAutoTopicCreation: true,
        },
      },
    },
  );
  app.listen();
}
bootstrap();
