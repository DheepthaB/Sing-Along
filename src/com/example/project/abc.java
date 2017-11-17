package com.example.project;

import android.app.Activity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import java.util.concurrent.TimeUnit;

public class abc
  extends Activity
{
  public static int oneTimeOnly = 0;
  private Runnable UpdateSongTime = new Runnable()
  {
    public void run()
    {
      abc.this.startTime = abc.this.mediaPlayer.getCurrentPosition();
      TextView localTextView = abc.this.startTimeField;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(abc.this.startTime));
      arrayOfObject[1] = Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(abc.this.startTime) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(abc.this.startTime)));
      localTextView.setText(String.format("%d min, %d sec", arrayOfObject));
      abc.this.seekbar.setProgress((int)abc.this.startTime);
      abc.this.myHandler.postDelayed(this, 100L);
    }
  };
  private int backwardTime = 5000;
  public TextView endTimeField;
  private double finalTime = 0.0D;
  private int forwardTime = 5000;
  private MediaPlayer mediaPlayer;
  private Handler myHandler = new Handler();
  private ImageButton pauseButton;
  private ImageButton playButton;
  private SeekBar seekbar;
  public TextView songName;
  private double startTime = 0.0D;
  public TextView startTimeField;
  
  public void forward(View paramView)
  {
    if ((int)this.startTime + this.forwardTime <= this.finalTime)
    {
      this.startTime += this.forwardTime;
      this.mediaPlayer.seekTo((int)this.startTime);
      return;
    }
    Toast.makeText(getApplicationContext(), "Cannot jump forward 5 seconds", 0).show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903057);
    this.songName = ((TextView)findViewById(2131099716));
    this.startTimeField = ((TextView)findViewById(2131099713));
    this.endTimeField = ((TextView)findViewById(2131099712));
    this.seekbar = ((SeekBar)findViewById(2131099711));
    this.playButton = ((ImageButton)findViewById(2131099710));
    this.pauseButton = ((ImageButton)findViewById(2131099709));
    this.songName.setText("song.mp3");
    this.mediaPlayer = MediaPlayer.create(this, 2131034112);
    this.seekbar.setClickable(false);
    this.pauseButton.setEnabled(false);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131558400, paramMenu);
    return true;
  }
  
  public void pause(View paramView)
  {
    Toast.makeText(getApplicationContext(), "Pausing sound", 0).show();
    this.mediaPlayer.pause();
    this.pauseButton.setEnabled(false);
    this.playButton.setEnabled(true);
  }
  
  public void play(View paramView)
  {
    Toast.makeText(getApplicationContext(), "Playing sound", 0).show();
    this.mediaPlayer.start();
    this.finalTime = this.mediaPlayer.getDuration();
    this.startTime = this.mediaPlayer.getCurrentPosition();
    if (oneTimeOnly == 0)
    {
      this.seekbar.setMax((int)this.finalTime);
      oneTimeOnly = 1;
    }
    TextView localTextView1 = this.endTimeField;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(this.finalTime));
    arrayOfObject1[1] = Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(this.finalTime) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(this.finalTime)));
    localTextView1.setText(String.format("%d min, %d sec", arrayOfObject1));
    TextView localTextView2 = this.startTimeField;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(this.startTime));
    arrayOfObject2[1] = Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(this.startTime) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(this.startTime)));
    localTextView2.setText(String.format("%d min, %d sec", arrayOfObject2));
    this.seekbar.setProgress((int)this.startTime);
    this.myHandler.postDelayed(this.UpdateSongTime, 100L);
    this.pauseButton.setEnabled(true);
    this.playButton.setEnabled(false);
  }
  
  public void rewind(View paramView)
  {
    if ((int)this.startTime - this.backwardTime > 0)
    {
      this.startTime -= this.backwardTime;
      this.mediaPlayer.seekTo((int)this.startTime);
      return;
    }
    Toast.makeText(getApplicationContext(), "Cannot jump backward 5 seconds", 0).show();
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.abc
 * JD-Core Version:    0.7.0.1
 */