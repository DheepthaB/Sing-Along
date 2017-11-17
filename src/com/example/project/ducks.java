package com.example.project;

import android.app.Activity;
import android.app.ProgressDialog;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.util.Log;
import android.widget.MediaController;
import android.widget.VideoView;

public class ducks
  extends Activity
{
  private MediaController mediaControls;
  private VideoView myVideoView;
  private int position = 0;
  private ProgressDialog progressDialog;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903079);
    if (this.mediaControls == null) {
      this.mediaControls = new MediaController(this);
    }
    this.myVideoView = ((VideoView)findViewById(2131099745));
    this.progressDialog = new ProgressDialog(this);
    this.progressDialog.setTitle("5 Little Ducks");
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
          ducks.this.progressDialog.dismiss();
          ducks.this.myVideoView.seekTo(ducks.this.position);
          if (ducks.this.position == 0)
          {
            ducks.this.myVideoView.start();
            return;
          }
          ducks.this.myVideoView.pause();
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
 * Qualified Name:     com.example.project.ducks
 * JD-Core Version:    0.7.0.1
 */