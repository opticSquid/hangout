import { Controller } from '@nestjs/common';
import { EventPattern } from '@nestjs/microservices';
import { AppService } from './app.service';
import { NewUserRegistered } from './entities/NewUserRegistered';
import { VerificationStatus } from './entities/VerificationStatus';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}
  @EventPattern('new-user-registered')
  handleNewUserRegistered(data: NewUserRegistered) {
    this.appService.sendEmailVerificationMail(data);
  }
  @EventPattern('verification-status')
  handleAccountActivationHandler(verificationStatus: VerificationStatus) {
    this.appService.sendAccountActivationMail(verificationStatus);
  }
}
