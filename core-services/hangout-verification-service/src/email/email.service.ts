// email.service.ts
import { MailerService } from '@nestjs-modules/mailer';
import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { NewUserRegistered } from 'src/entities/NewUserRegistered';

@Injectable()
export class EmailService {
  constructor(
    private mailerService: MailerService,
    private readonly config: ConfigService,
  ) {}

  async sendMailForEmailVerification(user: NewUserRegistered, token: string) {
    const confirmation_url: string =
      this.config.get('MAIL_CONFIRMATION_URL') + token;

    await this.mailerService.sendMail({
      to: user.email,
      // from: '"Support Team" <support@example.com>', // override default from
      subject: 'Welcome to HangOut! Confirm your Email',
      template: './EmailVerificationTemplate', // `.ejs` extension is appended automatically
      context: {
        // filling <%= %> brackets with content
        name: user.name,
        confirmation_url,
      },
    });
  }
}
