import { Injectable } from '@nestjs/common';
import jwt, { JwtPayload } from 'jsonwebtoken';
import { ConfigService } from '@nestjs/config';
import { NewUserRegistered } from 'src/entities/NewUserRegistered';
@Injectable()
export class JwtService {
  constructor(private readonly config: ConfigService) {}

  signJwt(user: NewUserRegistered): string {
    return jwt.sign(user, this.config.get('JWT_PRIVATE_KEY'), {
      expiresIn: '10m',
      subject: user.email,
    });
  }
  verifyJwt(token: string): boolean {
    const payLoad: JwtPayload | string = jwt.verify(
      token,
      this.config.get('JWT_PRIVATE_KEY'),
    );
    return payLoad == null ? false : true;
  }
}
