package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.model.GameState;

public abstract interface m extends InputProcessor
{
  public abstract void a(int paramInt1, int paramInt2);

  public abstract void a(Skin paramSkin, x paramx, int paramInt1, int paramInt2);

  public abstract void a(GameState paramGameState);

  public abstract void a(t paramt);

  public abstract void a_(float paramFloat);

  public abstract void b(int paramInt1, int paramInt2);

  public abstract void b(Skin paramSkin);

  public abstract String g_();

  public abstract void h_();

  public abstract void i_();

  public abstract void j_();

  public abstract n k_();

  public abstract boolean l_();

  public abstract boolean m_();

  public abstract void p_();

  public abstract void q_();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.m
 * JD-Core Version:    0.6.2
 */