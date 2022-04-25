import { WebPlugin } from '@capacitor/core';

import type { AdvertisingIdPlugin } from './definitions';

export class AdvertisingIdWeb extends WebPlugin implements AdvertisingIdPlugin {
  requestTracking(): Promise<{ value: string; }> {
    throw this.unavailable("@capacitor-community/advertising-id unavailable on web");
  }
  getAdvertisingId(): Promise<{ id: string; status: string; }> {
    throw this.unavailable("@capacitor-community/advertising-id unavailable on web");
  }
  getAdvertisingStatus(): Promise<{ status: string; }> {
    throw this.unavailable("@capacitor-community/advertising-id unavailable on web");
  }
}
