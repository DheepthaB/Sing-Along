package com.example.project;

import android.app.Activity;
import android.app.ProgressDialog;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.util.Log;
import android.widget.MediaController;
import android.widget.VideoView;

public class garden
  extends Activity
{
  private MediaController mediaControls;
  private VideoView myVideoView;
  private int position = 0;
  private ProgressDialog progressDialog;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    if (this.mediaControls == null) {
      this.mediaControls = new MediaController(this);
    }
    this.myVideoView = ((VideoView)findViewById(2131099746));
    this.progressDialog = new ProgressDialog(this);
    this.progressDialog.setTitle("Round And Round The Garden");
    this.progressDialog.setMessage("Loading...");
    this.progressDialog.setCancelable(false);
    this.progressDialog.show();
    try
    {
      this.myVideoView.setMediaController(this.mediaControls);
      this.myVideoView.requestFocus();
      this.myVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
      {
        public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
        {
          garden.this.progressDialog.dismiss();
          garden.this.myVideoView.seekTo(garden.this.position);
          if (garden.this.position == 0)
          {
            garden.this.myVideoView.start();
            return;
          }
          garden.this.myVideoView.pause();
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
 * Qualified Name:     com.example.project.garden
 * JD-Core Version:    0.7.0.1
 */