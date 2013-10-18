package com.badlogic.gdx;

public abstract class Game
  implements ApplicationListener
{
  private Screen screen;

  public void dispose()
  {
    if (this.screen != null)
      this.screen.hide();
  }

  public Screen getScreen()
  {
    return this.screen;
  }

  public void pause()
  {
    if (this.screen != null)
      this.screen.pause();
  }

  public void render()
  {
    if (this.screen != null)
      this.screen.render(Gdx.graphics.getDeltaTime());
  }

  public void resize(int paramInt1, int paramInt2)
  {
    if (this.screen != null)
      this.screen.resize(paramInt1, paramInt2);
  }

  public void resume()
  {
    if (this.screen != null)
      this.screen.resume();
  }

  public void setScreen(Screen paramScreen)
  {
    if (this.screen != null)
      this.screen.hide();
    this.screen = paramScreen;
    paramScreen.show();
    paramScreen.resize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Game
 * JD-Core Version:    0.6.2
 */