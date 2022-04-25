import { registerPlugin } from '@capacitor/core';

import type { AdvertisingIdPlugin } from './definitions';

const AdvertisingId = registerPlugin<AdvertisingIdPlugin>('AdvertisingId', {
  web: () => import('./web').then(m => new m.AdvertisingIdWeb()),
});

export * from './definitions';
export { AdvertisingId };
