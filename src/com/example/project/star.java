package com.example.project;

import android.app.Activity;
import android.app.ProgressDialog;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.widget.MediaController;
import android.widget.VideoView;

public class star
  extends Activity
{
  private MediaController mediaControls;
  private VideoView myVideoView;
  private int position = 0;
  private ProgressDialog progressDialog;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903103);
    if (this.mediaControls == null) {
      this.mediaControls = new MediaController(this);
    }
    this.myVideoView = ((VideoView)findViewById(2131099764));
    this.progressDialog = new ProgressDialog(this);
    this.progressDialog.setTitle("Twinkle Twinkle Little Star");
    this.progressDialog.setMessage("Loading...");
    this.progressDialog.setCancelable(false);
    this.progressDialog.show();
    try
    {
      this.myVideoView.setMediaController(this.mediaControls);
      this.myVideoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + 2131034115));
      this.myVideoView.requestFocus();
      this.myVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
      {
        public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
        {
          star.this.progressDialog.dismiss();
          star.this.myVideoView.seekTo(star.this.position);
          if (star.this.position == 0)
          {
            star.this.myVideoView.start();
            return;
          }
          star.this.myVideoView.pause();
        }
      });
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e("Error", localException.getMessage());
        localException.printStackTrace();
      }
    }
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.position = paramBundle.getInt("Position");
    this.myVideoView.seekTo(this.position);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("Position", this.myVideoView.getCurrentPosition());
    this.myVideoView.pause();
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.star
 * JD-Core Version:    0.7.0.1
 */