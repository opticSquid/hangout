import { Inject, Injectable } from '@nestjs/common';
import { ClientKafka } from '@nestjs/microservices';
import { NewUserRegistered } from './entities/NewUserRegistered';
import { VerificationStatus } from './entities/VerificationStatus';
import { EmailService } from './email/email.service';
import { JwtService } from './jwt/jwt.service';

@Injectable()
export class AppService {
  constructor(
    @Inject('AUTH_SERVICE') private readonly authServiceEvent: ClientKafka,
    private readonly emailService: EmailService,
    private readonly jwtService: JwtService,
  ) {}
  getHello(): string {
    return 'Hello World!';
  }
  sendEmailVerificationMail(newUser: NewUserRegistered) {
    console.log('service function log: ', newUser.email);
    const jwtToken: string = this.jwtService.signJwt(newUser);
    this.emailService.sendMailForEmailVerification(newUser, jwtToken);
    // const emailVerifiedUser: SendRegistrationStatus = {
    //   email: newUser.email,
    //   verificationStatus: true,
    // };
    //this.authServiceEvent.emit('new-verified-user', emailVerifiedUser);
  }

  sendAccountActivationMail(verificationStatus: VerificationStatus) {
    console.log(verificationStatus);
  }
}
