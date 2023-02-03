export interface AdvertisingIdPlugin {
  requestTracking(): Promise<{ value: AdvertisingStatus }>;
  getAdvertisingId(): Promise<{ id: string, status: AdvertisingStatus }>;
  getAdvertisingStatus(): Promise<{ status: AdvertisingStatus }>;
}

export type AdvertisingStatus =
  | 'Authorized'
  | 'Denied'
  | 'Not Determined'
  | 'Restricted';
