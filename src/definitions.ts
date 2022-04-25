export interface AdvertisingIdPlugin {
  requestTracking(): Promise<{ value: string }>;
  getAdvertisingId(): Promise<{ id: string, status: string }>;
  getAdvertisingStatus(): Promise<{ status: string }>;
}
