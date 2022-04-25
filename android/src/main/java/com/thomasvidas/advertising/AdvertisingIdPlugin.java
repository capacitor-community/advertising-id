package com.thomasvidas.advertising;

import android.content.Context;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "AdvertisingId")
public class AdvertisingIdPlugin extends Plugin {

    private AdvertisingId implementation = new AdvertisingId();

    @PluginMethod
    public void requestTracking(PluginCall call) {
        String status = implementation.getTrackingStatus(getContext());

        JSObject output = new JSObject();
        output.put("value", status);
        call.resolve(output);
    }

    @PluginMethod
    public void getAdvertisingId(PluginCall call) {
        Context context = getContext();
        String id = implementation.getTrackingId(context);
        String status = implementation.getTrackingStatus(context);

        JSObject output = new JSObject();
        output.put("id", id);
        output.put("status", status);
        call.resolve(output);
    }

    @PluginMethod
    public void getAdvertisingStatus(PluginCall call) {
        String status = implementation.getTrackingStatus(getContext());

        JSObject output = new JSObject();
        output.put("status", status);
        call.resolve(output);
    }
}
