import './style.css';
import { AdvertisingId } from '@capacitor-community/advertising-id';

const adId = document.getElementById('txt-ad-id')!;
const adStatus = document.getElementById('txt-ad-status')!;
const btnPrompt = document.getElementById('btn-prompt-ad-tracking')!;

const prompt = async () => {
  await AdvertisingId.requestTracking();
  const id = await AdvertisingId.getAdvertisingId();
  adStatus.innerText = id.status;
  adId.innerText = id.id;
};

btnPrompt.onclick = (_: MouseEvent) => {
  prompt();
};
