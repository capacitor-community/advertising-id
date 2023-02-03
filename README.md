# @capacitor-community/advertising-id

Allows access to the IDFA (iOS) and GAID (Android)

## Install

```bash
npm install @capacitor-community/advertising-id
npx cap sync
```

## iOS

iOS requires the following usage description be added and filled out for your app in `Info.plist` to use the `requestTracking()` method:

- `NSUserTrackingUsageDescription` (`Privacy - Tracking Usage Description`)

## API

<docgen-index>

* [`requestTracking()`](#requesttracking)
* [`getAdvertisingId()`](#getadvertisingid)
* [`getAdvertisingStatus()`](#getadvertisingstatus)
* [Type Aliases](#type-aliases)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### requestTracking()

```typescript
requestTracking() => Promise<{ value: AdvertisingStatus; }>
```

**Returns:** <code>Promise&lt;{ value: <a href="#advertisingstatus">AdvertisingStatus</a>; }&gt;</code>

--------------------


### getAdvertisingId()

```typescript
getAdvertisingId() => Promise<{ id: string; status: AdvertisingStatus; }>
```

**Returns:** <code>Promise&lt;{ id: string; status: <a href="#advertisingstatus">AdvertisingStatus</a>; }&gt;</code>

--------------------


### getAdvertisingStatus()

```typescript
getAdvertisingStatus() => Promise<{ status: AdvertisingStatus; }>
```

**Returns:** <code>Promise&lt;{ status: <a href="#advertisingstatus">AdvertisingStatus</a>; }&gt;</code>

--------------------


### Type Aliases


#### AdvertisingStatus

<code>'Authorized' | 'Denied' | 'Not Determined' | 'Restricted'</code>

</docgen-api>
