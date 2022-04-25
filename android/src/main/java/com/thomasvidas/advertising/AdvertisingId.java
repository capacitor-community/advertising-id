package com.thomasvidas.advertising;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

import java.io.IOException;

public class AdvertisingId {

    public enum TrackingStatus {
        Authorized("Authorized"),
        Denied("Denied"),
        NotDetermined("Not Determined"),
        Restricted("Restricted");

        private String name;

        TrackingStatus(String value) {
            name = value;
        }

        @Override
        public String toString() {
            return name;
        }
    }

    private AdvertisingIdClient.Info getAdvertisingIdInfo(Context context) throws GooglePlayServicesNotAvailableException, IOException, GooglePlayServicesRepairableException {
        return AdvertisingIdClient.getAdvertisingIdInfo(context);
    }

    public String getTrackingId(Context context) {
        try {
            AdvertisingIdClient.Info info = getAdvertisingIdInfo(context);
            return info.isLimitAdTrackingEnabled() ? "" : info.getId();
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            return "";
        }
    }

    public String getTrackingStatus(Context context) {
        try {
            AdvertisingIdClient.Info info = getAdvertisingIdInfo(context);
            return info.isLimitAdTrackingEnabled() ?
                    TrackingStatus.Denied.toString() :
                    TrackingStatus.Authorized.toString();
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException e) {
            return TrackingStatus.Restricted.toString();
        } catch (IOException e) {
            return TrackingStatus.NotDetermined.toString();
        }
    }
}
