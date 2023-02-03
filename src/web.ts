import { WebPlugin } from '@capacitor/core';

import type { AdvertisingIdPlugin, AdvertisingStatus } from './definitions';

export class AdvertisingIdWeb extends WebPlugin implements AdvertisingIdPlugin {
  requestTracking(): Promise<{ value: AdvertisingStatus; }> {
    throw this.unavailable("@capacitor-community/advertising-id unavailable on web");
  }
  getAdvertisingId(): Promise<{ id: string; status: AdvertisingStatus; }> {
    throw this.unavailable("@capacitor-community/advertising-id unavailable on web");
  }
  getAdvertisingStatus(): Promise<{ status: AdvertisingStatus; }> {
    throw this.unavailable("@capacitor-community/advertising-id unavailable on web");
  }
}
