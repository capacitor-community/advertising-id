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

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### requestTracking()

```typescript
requestTracking() => Promise<{ value: string; }>
```

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### getAdvertisingId()

```typescript
getAdvertisingId() => Promise<{ id: string; status: string; }>
```

**Returns:** <code>Promise&lt;{ id: string; status: string; }&gt;</code>

--------------------


### getAdvertisingStatus()

```typescript
getAdvertisingStatus() => Promise<{ status: string; }>
```

**Returns:** <code>Promise&lt;{ status: string; }&gt;</code>

--------------------

</docgen-api>
