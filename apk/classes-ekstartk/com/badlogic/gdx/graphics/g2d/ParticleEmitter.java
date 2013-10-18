package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.MathUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Writer;

public class ParticleEmitter
{
  private static final int UPDATE_ANGLE = 2;
  private static final int UPDATE_GRAVITY = 32;
  private static final int UPDATE_ROTATION = 4;
  private static final int UPDATE_SCALE = 1;
  private static final int UPDATE_TINT = 64;
  private static final int UPDATE_VELOCITY = 8;
  private static final int UPDATE_WIND = 16;
  private float accumulator;
  private boolean[] active;
  private int activeCount;
  private boolean additive = true;
  private boolean aligned;
  private boolean allowCompletion;
  private ParticleEmitter.ScaledNumericValue angleValue = new ParticleEmitter.ScaledNumericValue();
  private boolean attached;
  private boolean behind;
  private boolean continuous;
  private float delay;
  private float delayTimer;
  private ParticleEmitter.RangedNumericValue delayValue = new ParticleEmitter.RangedNumericValue();
  public float duration = 1.0F;
  public float durationTimer;
  private ParticleEmitter.RangedNumericValue durationValue = new ParticleEmitter.RangedNumericValue();
  private int emission;
  private int emissionDelta;
  private int emissionDiff;
  private ParticleEmitter.ScaledNumericValue emissionValue = new ParticleEmitter.ScaledNumericValue();
  private boolean firstUpdate;
  private boolean flipX;
  private boolean flipY;
  private ParticleEmitter.ScaledNumericValue gravityValue = new ParticleEmitter.ScaledNumericValue();
  private String imagePath;
  private int life;
  private int lifeDiff;
  private int lifeOffset;
  private int lifeOffsetDiff;
  private ParticleEmitter.ScaledNumericValue lifeOffsetValue = new ParticleEmitter.ScaledNumericValue();
  private ParticleEmitter.ScaledNumericValue lifeValue = new ParticleEmitter.ScaledNumericValue();
  private int maxParticleCount = 4;
  private int minParticleCount;
  private String name;
  private ParticleEmitter.Particle[] particles;
  private ParticleEmitter.ScaledNumericValue rotationValue = new ParticleEmitter.ScaledNumericValue();
  private ParticleEmitter.ScaledNumericValue scaleValue = new ParticleEmitter.ScaledNumericValue();
  private float spawnHeight;
  private float spawnHeightDiff;
  private ParticleEmitter.ScaledNumericValue spawnHeightValue = new ParticleEmitter.ScaledNumericValue();
  private ParticleEmitter.SpawnShapeValue spawnShapeValue = new ParticleEmitter.SpawnShapeValue();
  private float spawnWidth;
  private float spawnWidthDiff;
  private ParticleEmitter.ScaledNumericValue spawnWidthValue = new ParticleEmitter.ScaledNumericValue();
  private Sprite sprite;
  private ParticleEmitter.GradientColorValue tintValue = new ParticleEmitter.GradientColorValue();
  private ParticleEmitter.ScaledNumericValue transparencyValue = new ParticleEmitter.ScaledNumericValue();
  private int updateFlags;
  private ParticleEmitter.ScaledNumericValue velocityValue = new ParticleEmitter.ScaledNumericValue();
  private ParticleEmitter.ScaledNumericValue windValue = new ParticleEmitter.ScaledNumericValue();
  private float x;
  private ParticleEmitter.RangedNumericValue xOffsetValue = new ParticleEmitter.ScaledNumericValue();
  private float y;
  private ParticleEmitter.RangedNumericValue yOffsetValue = new ParticleEmitter.ScaledNumericValue();

  public ParticleEmitter()
  {
    initialize();
  }

  public ParticleEmitter(ParticleEmitter paramParticleEmitter)
  {
    this.sprite = paramParticleEmitter.sprite;
    this.name = paramParticleEmitter.name;
    setMaxParticleCount(paramParticleEmitter.maxParticleCount);
    this.minParticleCount = paramParticleEmitter.minParticleCount;
    this.delayValue.load(paramParticleEmitter.delayValue);
    this.durationValue.load(paramParticleEmitter.durationValue);
    this.emissionValue.load(paramParticleEmitter.emissionValue);
    this.lifeValue.load(paramParticleEmitter.lifeValue);
    this.lifeOffsetValue.load(paramParticleEmitter.lifeOffsetValue);
    this.scaleValue.load(paramParticleEmitter.scaleValue);
    this.rotationValue.load(paramParticleEmitter.rotationValue);
    this.velocityValue.load(paramParticleEmitter.velocityValue);
    this.angleValue.load(paramParticleEmitter.angleValue);
    this.windValue.load(paramParticleEmitter.windValue);
    this.gravityValue.load(paramParticleEmitter.gravityValue);
    this.transparencyValue.load(paramParticleEmitter.transparencyValue);
    this.tintValue.load(paramParticleEmitter.tintValue);
    this.xOffsetValue.load(paramParticleEmitter.xOffsetValue);
    this.yOffsetValue.load(paramParticleEmitter.yOffsetValue);
    this.spawnWidthValue.load(paramParticleEmitter.spawnWidthValue);
    this.spawnHeightValue.load(paramParticleEmitter.spawnHeightValue);
    this.spawnShapeValue.load(paramParticleEmitter.spawnShapeValue);
    this.attached = paramParticleEmitter.attached;
    this.continuous = paramParticleEmitter.continuous;
    this.aligned = paramParticleEmitter.aligned;
    this.behind = paramParticleEmitter.behind;
    this.additive = paramParticleEmitter.additive;
  }

  public ParticleEmitter(BufferedReader paramBufferedReader)
  {
    initialize();
    load(paramBufferedReader);
  }

  private void activateParticle(int paramInt)
  {
    ParticleEmitter.Particle localParticle = this.particles[paramInt];
    if (localParticle == null)
    {
      ParticleEmitter.Particle[] arrayOfParticle = this.particles;
      localParticle = newParticle(this.sprite);
      arrayOfParticle[paramInt] = localParticle;
      localParticle.flip(this.flipX, this.flipY);
    }
    float f1 = this.durationTimer / this.duration;
    int i = this.updateFlags;
    int j = this.life + (int)(this.lifeDiff * this.lifeValue.getScale(f1));
    localParticle.life = j;
    localParticle.currentLife = j;
    if (this.velocityValue.active)
    {
      localParticle.velocity = this.velocityValue.newLowValue();
      localParticle.velocityDiff = this.velocityValue.newHighValue();
      if (!this.velocityValue.isRelative())
        localParticle.velocityDiff -= localParticle.velocity;
    }
    localParticle.angle = this.angleValue.newLowValue();
    localParticle.angleDiff = this.angleValue.newHighValue();
    if (!this.angleValue.isRelative())
      localParticle.angleDiff -= localParticle.angle;
    float f2;
    if ((i & 0x2) == 0)
    {
      f2 = localParticle.angle + localParticle.angleDiff * this.angleValue.getScale(0.0F);
      localParticle.angle = f2;
      localParticle.angleCos = MathUtils.cosDeg(f2);
      localParticle.angleSin = MathUtils.sinDeg(f2);
    }
    while (true)
    {
      float f3 = this.sprite.getWidth();
      localParticle.scale = (this.scaleValue.newLowValue() / f3);
      localParticle.scaleDiff = (this.scaleValue.newHighValue() / f3);
      if (!this.scaleValue.isRelative())
        localParticle.scaleDiff -= localParticle.scale;
      localParticle.setScale(localParticle.scale + localParticle.scaleDiff * this.scaleValue.getScale(0.0F));
      float f23;
      if (this.rotationValue.active)
      {
        localParticle.rotation = this.rotationValue.newLowValue();
        localParticle.rotationDiff = this.rotationValue.newHighValue();
        if (!this.rotationValue.isRelative())
          localParticle.rotationDiff -= localParticle.rotation;
        f23 = localParticle.rotation + localParticle.rotationDiff * this.rotationValue.getScale(0.0F);
        if (!this.aligned)
          break label1248;
      }
      label1248: for (float f24 = f2 + f23; ; f24 = f23)
      {
        localParticle.setRotation(f24);
        if (this.windValue.active)
        {
          localParticle.wind = this.windValue.newLowValue();
          localParticle.windDiff = this.windValue.newHighValue();
          if (!this.windValue.isRelative())
            localParticle.windDiff -= localParticle.wind;
        }
        if (this.gravityValue.active)
        {
          localParticle.gravity = this.gravityValue.newLowValue();
          localParticle.gravityDiff = this.gravityValue.newHighValue();
          if (!this.gravityValue.isRelative())
            localParticle.gravityDiff -= localParticle.gravity;
        }
        float[] arrayOfFloat1 = localParticle.tint;
        if (arrayOfFloat1 == null)
        {
          arrayOfFloat1 = new float[3];
          localParticle.tint = arrayOfFloat1;
        }
        float[] arrayOfFloat2 = this.tintValue.getColor(0.0F);
        arrayOfFloat1[0] = arrayOfFloat2[0];
        arrayOfFloat1[1] = arrayOfFloat2[1];
        arrayOfFloat1[2] = arrayOfFloat2[2];
        localParticle.transparency = this.transparencyValue.newLowValue();
        localParticle.transparencyDiff = (this.transparencyValue.newHighValue() - localParticle.transparency);
        float f4 = this.x;
        if (this.xOffsetValue.active)
          f4 += this.xOffsetValue.newLowValue();
        float f5 = this.y;
        if (this.yOffsetValue.active)
          f5 += this.yOffsetValue.newLowValue();
        switch (ParticleEmitter.1.$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape[this.spawnShapeValue.shape.ordinal()])
        {
        default:
        case 1:
        case 2:
        case 3:
        }
        while (true)
        {
          float f8 = this.sprite.getHeight();
          localParticle.setBounds(f4 - f3 / 2.0F, f5 - f8 / 2.0F, f3, f8);
          int k = (int)(this.lifeOffset + this.lifeOffsetDiff * this.lifeOffsetValue.getScale(f1));
          if (k > 0)
          {
            if (k >= localParticle.currentLife)
              k = -1 + localParticle.currentLife;
            updateParticle(localParticle, k / 1000.0F, k);
          }
          return;
          float f21 = this.spawnWidth + this.spawnWidthDiff * this.spawnWidthValue.getScale(f1);
          float f22 = this.spawnHeight + this.spawnHeightDiff * this.spawnHeightValue.getScale(f1);
          f4 += MathUtils.random(f21) - f21 / 2.0F;
          f5 += MathUtils.random(f22) - f22 / 2.0F;
          continue;
          float f10 = this.spawnWidth + this.spawnWidthDiff * this.spawnWidthValue.getScale(f1);
          float f11 = this.spawnHeight + this.spawnHeightDiff * this.spawnHeightValue.getScale(f1);
          float f12 = f10 / 2.0F;
          float f13 = f11 / 2.0F;
          if ((f12 != 0.0F) && (f13 != 0.0F))
          {
            float f14 = f12 / f13;
            if (this.spawnShapeValue.edges)
            {
              float f18;
              switch (ParticleEmitter.1.$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnEllipseSide[this.spawnShapeValue.side.ordinal()])
              {
              default:
                f18 = MathUtils.random(360.0F);
              case 1:
              case 2:
              }
              while (true)
              {
                float f19 = MathUtils.cosDeg(f18);
                float f20 = MathUtils.sinDeg(f18);
                f4 += f19 * f12;
                f5 += f12 * f20 / f14;
                if ((i & 0x2) != 0)
                  break;
                localParticle.angle = f18;
                localParticle.angleCos = f19;
                localParticle.angleSin = f20;
                break;
                f18 = -MathUtils.random(179.0F);
                continue;
                f18 = MathUtils.random(179.0F);
              }
            }
            float f15 = f12 * f12;
            float f16;
            float f17;
            do
            {
              f16 = MathUtils.random(f10) - f12;
              f17 = MathUtils.random(f10) - f12;
            }
            while (f16 * f16 + f17 * f17 > f15);
            f4 += f16;
            f5 += f17 / f14;
            continue;
            float f6 = this.spawnWidth + this.spawnWidthDiff * this.spawnWidthValue.getScale(f1);
            float f7 = this.spawnHeight + this.spawnHeightDiff * this.spawnHeightValue.getScale(f1);
            if (f6 != 0.0F)
            {
              float f9 = f6 * MathUtils.random();
              f4 += f9;
              f5 += f9 * (f7 / f6);
            }
            else
            {
              f5 += f7 * MathUtils.random();
            }
          }
        }
      }
      f2 = 0.0F;
    }
  }

  private void initialize()
  {
    this.durationValue.setAlwaysActive(true);
    this.emissionValue.setAlwaysActive(true);
    this.lifeValue.setAlwaysActive(true);
    this.scaleValue.setAlwaysActive(true);
    this.transparencyValue.setAlwaysActive(true);
    this.spawnShapeValue.setAlwaysActive(true);
    this.spawnWidthValue.setAlwaysActive(true);
    this.spawnHeightValue.setAlwaysActive(true);
  }

  static boolean readBoolean(BufferedReader paramBufferedReader, String paramString)
  {
    return Boolean.parseBoolean(readString(paramBufferedReader, paramString));
  }

  static float readFloat(BufferedReader paramBufferedReader, String paramString)
  {
    return Float.parseFloat(readString(paramBufferedReader, paramString));
  }

  static int readInt(BufferedReader paramBufferedReader, String paramString)
  {
    return Integer.parseInt(readString(paramBufferedReader, paramString));
  }

  static String readString(BufferedReader paramBufferedReader, String paramString)
  {
    String str = paramBufferedReader.readLine();
    if (str == null)
      throw new IOException("Missing value: " + paramString);
    return str.substring(1 + str.indexOf(":")).trim();
  }

  private void restart()
  {
    float f;
    if (this.delayValue.active)
    {
      f = this.delayValue.newLowValue();
      this.delay = f;
      this.delayTimer = 0.0F;
      this.durationTimer -= this.duration;
      this.duration = this.durationValue.newLowValue();
      this.emission = ((int)this.emissionValue.newLowValue());
      this.emissionDiff = ((int)this.emissionValue.newHighValue());
      if (!this.emissionValue.isRelative())
        this.emissionDiff -= this.emission;
      this.life = ((int)this.lifeValue.newLowValue());
      this.lifeDiff = ((int)this.lifeValue.newHighValue());
      if (!this.lifeValue.isRelative())
        this.lifeDiff -= this.life;
      if (!this.lifeOffsetValue.active)
        break label488;
    }
    label488: for (int i = (int)this.lifeOffsetValue.newLowValue(); ; i = 0)
    {
      this.lifeOffset = i;
      this.lifeOffsetDiff = ((int)this.lifeOffsetValue.newHighValue());
      if (!this.lifeOffsetValue.isRelative())
        this.lifeOffsetDiff -= this.lifeOffset;
      this.spawnWidth = this.spawnWidthValue.newLowValue();
      this.spawnWidthDiff = this.spawnWidthValue.newHighValue();
      if (!this.spawnWidthValue.isRelative())
        this.spawnWidthDiff -= this.spawnWidth;
      this.spawnHeight = this.spawnHeightValue.newLowValue();
      this.spawnHeightDiff = this.spawnHeightValue.newHighValue();
      if (!this.spawnHeightValue.isRelative())
        this.spawnHeightDiff -= this.spawnHeight;
      this.updateFlags = 0;
      if ((this.angleValue.active) && (this.angleValue.timeline.length > 1))
        this.updateFlags = (0x2 | this.updateFlags);
      if ((this.velocityValue.active) && (this.velocityValue.active))
        this.updateFlags = (0x8 | this.updateFlags);
      if (this.scaleValue.timeline.length > 1)
        this.updateFlags = (0x1 | this.updateFlags);
      if ((this.rotationValue.active) && (this.rotationValue.timeline.length > 1))
        this.updateFlags = (0x4 | this.updateFlags);
      if (this.windValue.active)
        this.updateFlags = (0x10 | this.updateFlags);
      if (this.gravityValue.active)
        this.updateFlags = (0x20 | this.updateFlags);
      if (this.tintValue.timeline.length > 1)
        this.updateFlags = (0x40 | this.updateFlags);
      return;
      f = 0.0F;
      break;
    }
  }

  private boolean updateParticle(ParticleEmitter.Particle paramParticle, float paramFloat, int paramInt)
  {
    int i = paramParticle.currentLife - paramInt;
    if (i <= 0)
      return false;
    paramParticle.currentLife = i;
    float f1 = 1.0F - paramParticle.currentLife / paramParticle.life;
    int j = this.updateFlags;
    if ((j & 0x1) != 0)
      paramParticle.setScale(paramParticle.scale + paramParticle.scaleDiff * this.scaleValue.getScale(f1));
    float f2;
    float f6;
    float f7;
    if ((j & 0x8) != 0)
    {
      f2 = paramFloat * (paramParticle.velocity + paramParticle.velocityDiff * this.velocityValue.getScale(f1));
      if ((j & 0x2) != 0)
      {
        float f8 = paramParticle.angle + paramParticle.angleDiff * this.angleValue.getScale(f1);
        float f9 = f2 * MathUtils.cosDeg(f8);
        float f10 = f2 * MathUtils.sinDeg(f8);
        if ((j & 0x4) != 0)
        {
          float f11 = paramParticle.rotation + paramParticle.rotationDiff * this.rotationValue.getScale(f1);
          if (this.aligned)
            f11 += f8;
          paramParticle.setRotation(f11);
        }
        f6 = f10;
        f7 = f9;
        if ((j & 0x10) != 0)
          f7 += paramFloat * (paramParticle.wind + paramParticle.windDiff * this.windValue.getScale(f1));
        if ((j & 0x20) != 0)
          f6 += paramFloat * (paramParticle.gravity + paramParticle.gravityDiff * this.gravityValue.getScale(f1));
        paramParticle.translate(f7, f6);
        label283: if ((j & 0x40) == 0)
          break label458;
      }
    }
    label458: for (float[] arrayOfFloat = this.tintValue.getColor(f1); ; arrayOfFloat = paramParticle.tint)
    {
      paramParticle.setColor(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[2], paramParticle.transparency + paramParticle.transparencyDiff * this.transparencyValue.getScale(f1));
      return true;
      float f3 = f2 * paramParticle.angleCos;
      float f4 = f2 * paramParticle.angleSin;
      if ((this.aligned) || ((j & 0x4) != 0))
      {
        float f5 = paramParticle.rotation + paramParticle.rotationDiff * this.rotationValue.getScale(f1);
        if (this.aligned)
          f5 += paramParticle.angle;
        paramParticle.setRotation(f5);
      }
      f6 = f4;
      f7 = f3;
      break;
      if ((j & 0x4) == 0)
        break label283;
      paramParticle.setRotation(paramParticle.rotation + paramParticle.rotationDiff * this.rotationValue.getScale(f1));
      break label283;
    }
  }

  public void addParticle()
  {
    int i = this.activeCount;
    if (i == this.maxParticleCount);
    while (true)
    {
      return;
      boolean[] arrayOfBoolean = this.active;
      int j = 0;
      int k = arrayOfBoolean.length;
      while (j < k)
      {
        if (arrayOfBoolean[j] == 0)
        {
          activateParticle(j);
          arrayOfBoolean[j] = true;
          this.activeCount = (i + 1);
          return;
        }
        j++;
      }
    }
  }

  public void addParticles(int paramInt)
  {
    int i = 0;
    int j = Math.min(paramInt, this.maxParticleCount - this.activeCount);
    if (j == 0)
      return;
    boolean[] arrayOfBoolean = this.active;
    int k = arrayOfBoolean.length;
    int m = 0;
    if (m < j)
      while (true)
      {
        if (i >= k)
          break label84;
        if (arrayOfBoolean[i] == 0)
        {
          activateParticle(i);
          int n = i + 1;
          arrayOfBoolean[i] = true;
          m++;
          i = n;
          break;
        }
        i++;
      }
    label84: this.activeCount = (j + this.activeCount);
  }

  public void allowCompletion()
  {
    this.allowCompletion = true;
    this.durationTimer = this.duration;
  }

  public void draw(SpriteBatch paramSpriteBatch)
  {
    if (this.additive)
      paramSpriteBatch.setBlendFunction(770, 1);
    ParticleEmitter.Particle[] arrayOfParticle = this.particles;
    boolean[] arrayOfBoolean = this.active;
    int i = this.activeCount;
    int j = 0;
    int k = arrayOfBoolean.length;
    while (j < k)
    {
      if (arrayOfBoolean[j] != 0)
        arrayOfParticle[j].draw(paramSpriteBatch);
      j++;
    }
    this.activeCount = i;
    if (this.additive)
      paramSpriteBatch.setBlendFunction(770, 771);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    this.accumulator += Math.min(paramFloat * 1000.0F, 250.0F);
    if (this.accumulator < 1.0F)
    {
      draw(paramSpriteBatch);
      return;
    }
    int i = (int)this.accumulator;
    this.accumulator -= i;
    if (this.additive)
      paramSpriteBatch.setBlendFunction(770, 1);
    ParticleEmitter.Particle[] arrayOfParticle = this.particles;
    boolean[] arrayOfBoolean = this.active;
    int j = this.activeCount;
    int k = arrayOfBoolean.length;
    int m = 0;
    if (m < k)
    {
      if (arrayOfBoolean[m] != 0)
      {
        ParticleEmitter.Particle localParticle = arrayOfParticle[m];
        if (!updateParticle(localParticle, paramFloat, i))
          break label138;
        localParticle.draw(paramSpriteBatch);
      }
      while (true)
      {
        m++;
        break;
        label138: arrayOfBoolean[m] = false;
        j--;
      }
    }
    this.activeCount = j;
    if (this.additive)
      paramSpriteBatch.setBlendFunction(770, 771);
    if (this.delayTimer < this.delay)
    {
      this.delayTimer += i;
      return;
    }
    if (this.firstUpdate)
    {
      this.firstUpdate = false;
      addParticle();
    }
    if (this.durationTimer < this.duration)
      this.durationTimer += i;
    while (true)
    {
      this.emissionDelta = (i + this.emissionDelta);
      float f1 = this.emission + this.emissionDiff * this.emissionValue.getScale(this.durationTimer / this.duration);
      if (f1 > 0.0F)
      {
        float f2 = 1000.0F / f1;
        if (this.emissionDelta >= f2)
        {
          int n = Math.min((int)(this.emissionDelta / f2), this.maxParticleCount - j);
          this.emissionDelta = ((int)(this.emissionDelta - f2 * n));
          this.emissionDelta = ((int)(this.emissionDelta % f2));
          addParticles(n);
        }
      }
      if (j >= this.minParticleCount)
        break;
      addParticles(this.minParticleCount - j);
      return;
      if ((!this.continuous) || (this.allowCompletion))
        break;
      restart();
    }
  }

  public int getActiveCount()
  {
    return this.activeCount;
  }

  public ParticleEmitter.ScaledNumericValue getAngle()
  {
    return this.angleValue;
  }

  public ParticleEmitter.RangedNumericValue getDelay()
  {
    return this.delayValue;
  }

  public ParticleEmitter.RangedNumericValue getDuration()
  {
    return this.durationValue;
  }

  public ParticleEmitter.ScaledNumericValue getEmission()
  {
    return this.emissionValue;
  }

  public ParticleEmitter.ScaledNumericValue getGravity()
  {
    return this.gravityValue;
  }

  public String getImagePath()
  {
    return this.imagePath;
  }

  public ParticleEmitter.ScaledNumericValue getLife()
  {
    return this.lifeValue;
  }

  public ParticleEmitter.ScaledNumericValue getLifeOffset()
  {
    return this.lifeOffsetValue;
  }

  public int getMaxParticleCount()
  {
    return this.maxParticleCount;
  }

  public int getMinParticleCount()
  {
    return this.minParticleCount;
  }

  public String getName()
  {
    return this.name;
  }

  public float getPercentComplete()
  {
    if (this.delayTimer < this.delay)
      return 0.0F;
    return Math.min(1.0F, this.durationTimer / this.duration);
  }

  public ParticleEmitter.ScaledNumericValue getRotation()
  {
    return this.rotationValue;
  }

  public ParticleEmitter.ScaledNumericValue getScale()
  {
    return this.scaleValue;
  }

  public ParticleEmitter.ScaledNumericValue getSpawnHeight()
  {
    return this.spawnHeightValue;
  }

  public ParticleEmitter.SpawnShapeValue getSpawnShape()
  {
    return this.spawnShapeValue;
  }

  public ParticleEmitter.ScaledNumericValue getSpawnWidth()
  {
    return this.spawnWidthValue;
  }

  public Sprite getSprite()
  {
    return this.sprite;
  }

  public ParticleEmitter.GradientColorValue getTint()
  {
    return this.tintValue;
  }

  public ParticleEmitter.ScaledNumericValue getTransparency()
  {
    return this.transparencyValue;
  }

  public ParticleEmitter.ScaledNumericValue getVelocity()
  {
    return this.velocityValue;
  }

  public ParticleEmitter.ScaledNumericValue getWind()
  {
    return this.windValue;
  }

  public float getX()
  {
    return this.x;
  }

  public ParticleEmitter.RangedNumericValue getXOffsetValue()
  {
    return this.xOffsetValue;
  }

  public float getY()
  {
    return this.y;
  }

  public ParticleEmitter.RangedNumericValue getYOffsetValue()
  {
    return this.yOffsetValue;
  }

  public boolean isAdditive()
  {
    return this.additive;
  }

  public boolean isAligned()
  {
    return this.aligned;
  }

  public boolean isAttached()
  {
    return this.attached;
  }

  public boolean isBehind()
  {
    return this.behind;
  }

  public boolean isComplete()
  {
    if (this.delayTimer < this.delay);
    while ((this.durationTimer < this.duration) || (this.activeCount != 0))
      return false;
    return true;
  }

  public boolean isContinuous()
  {
    return this.continuous;
  }

  public void load(BufferedReader paramBufferedReader)
  {
    try
    {
      this.name = readString(paramBufferedReader, "name");
      paramBufferedReader.readLine();
      this.delayValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.durationValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      setMinParticleCount(readInt(paramBufferedReader, "minParticleCount"));
      setMaxParticleCount(readInt(paramBufferedReader, "maxParticleCount"));
      paramBufferedReader.readLine();
      this.emissionValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.lifeValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.lifeOffsetValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.xOffsetValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.yOffsetValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.spawnShapeValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.spawnWidthValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.spawnHeightValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.scaleValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.velocityValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.angleValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.rotationValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.windValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.gravityValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.tintValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.transparencyValue.load(paramBufferedReader);
      paramBufferedReader.readLine();
      this.attached = readBoolean(paramBufferedReader, "attached");
      this.continuous = readBoolean(paramBufferedReader, "continuous");
      this.aligned = readBoolean(paramBufferedReader, "aligned");
      this.additive = readBoolean(paramBufferedReader, "additive");
      this.behind = readBoolean(paramBufferedReader, "behind");
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      if (this.name == null)
        throw localRuntimeException;
      throw new RuntimeException("Error parsing emitter: " + this.name, localRuntimeException);
    }
  }

  protected ParticleEmitter.Particle newParticle(Sprite paramSprite)
  {
    return new ParticleEmitter.Particle(paramSprite);
  }

  public void reset()
  {
    this.emissionDelta = 0;
    this.durationTimer = 0.0F;
    start();
  }

  public void save(Writer paramWriter)
  {
    paramWriter.write(this.name + "\n");
    paramWriter.write("- Delay -\n");
    this.delayValue.save(paramWriter);
    paramWriter.write("- Duration - \n");
    this.durationValue.save(paramWriter);
    paramWriter.write("- Count - \n");
    paramWriter.write("min: " + this.minParticleCount + "\n");
    paramWriter.write("max: " + this.maxParticleCount + "\n");
    paramWriter.write("- Emission - \n");
    this.emissionValue.save(paramWriter);
    paramWriter.write("- Life - \n");
    this.lifeValue.save(paramWriter);
    paramWriter.write("- Life Offset - \n");
    this.lifeOffsetValue.save(paramWriter);
    paramWriter.write("- X Offset - \n");
    this.xOffsetValue.save(paramWriter);
    paramWriter.write("- Y Offset - \n");
    this.yOffsetValue.save(paramWriter);
    paramWriter.write("- Spawn Shape - \n");
    this.spawnShapeValue.save(paramWriter);
    paramWriter.write("- Spawn Width - \n");
    this.spawnWidthValue.save(paramWriter);
    paramWriter.write("- Spawn Height - \n");
    this.spawnHeightValue.save(paramWriter);
    paramWriter.write("- Scale - \n");
    this.scaleValue.save(paramWriter);
    paramWriter.write("- Velocity - \n");
    this.velocityValue.save(paramWriter);
    paramWriter.write("- Angle - \n");
    this.angleValue.save(paramWriter);
    paramWriter.write("- Rotation - \n");
    this.rotationValue.save(paramWriter);
    paramWriter.write("- Wind - \n");
    this.windValue.save(paramWriter);
    paramWriter.write("- Gravity - \n");
    this.gravityValue.save(paramWriter);
    paramWriter.write("- Tint - \n");
    this.tintValue.save(paramWriter);
    paramWriter.write("- Transparency - \n");
    this.transparencyValue.save(paramWriter);
    paramWriter.write("- Options - \n");
    paramWriter.write("attached: " + this.attached + "\n");
    paramWriter.write("continuous: " + this.continuous + "\n");
    paramWriter.write("aligned: " + this.aligned + "\n");
    paramWriter.write("additive: " + this.additive + "\n");
    paramWriter.write("behind: " + this.behind + "\n");
  }

  public void setAdditive(boolean paramBoolean)
  {
    this.additive = paramBoolean;
  }

  public void setAligned(boolean paramBoolean)
  {
    this.aligned = paramBoolean;
  }

  public void setAttached(boolean paramBoolean)
  {
    this.attached = paramBoolean;
  }

  public void setBehind(boolean paramBoolean)
  {
    this.behind = paramBoolean;
  }

  public void setContinuous(boolean paramBoolean)
  {
    this.continuous = paramBoolean;
  }

  public void setFlip(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.flipX = paramBoolean1;
    this.flipY = paramBoolean2;
    if (this.particles == null);
    while (true)
    {
      return;
      int i = 0;
      int j = this.particles.length;
      while (i < j)
      {
        ParticleEmitter.Particle localParticle = this.particles[i];
        if (localParticle != null)
          localParticle.flip(paramBoolean1, paramBoolean2);
        i++;
      }
    }
  }

  public void setImagePath(String paramString)
  {
    this.imagePath = paramString;
  }

  public void setMaxParticleCount(int paramInt)
  {
    this.maxParticleCount = paramInt;
    this.active = new boolean[paramInt];
    this.activeCount = 0;
    this.particles = new ParticleEmitter.Particle[paramInt];
  }

  public void setMinParticleCount(int paramInt)
  {
    this.minParticleCount = paramInt;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    if (this.attached)
    {
      float f1 = paramFloat1 - this.x;
      float f2 = paramFloat2 - this.y;
      boolean[] arrayOfBoolean = this.active;
      int i = 0;
      int j = arrayOfBoolean.length;
      while (i < j)
      {
        if (arrayOfBoolean[i] != 0)
          this.particles[i].translate(f1, f2);
        i++;
      }
    }
    this.x = paramFloat1;
    this.y = paramFloat2;
  }

  public void setSprite(Sprite paramSprite)
  {
    this.sprite = paramSprite;
    if (paramSprite == null);
    label75: 
    while (true)
    {
      return;
      float f1 = paramSprite.getOriginX();
      float f2 = paramSprite.getOriginY();
      Texture localTexture = paramSprite.getTexture();
      int i = 0;
      int j = this.particles.length;
      while (true)
      {
        if (i >= j)
          break label75;
        ParticleEmitter.Particle localParticle = this.particles[i];
        if (localParticle == null)
          break;
        localParticle.setTexture(localTexture);
        localParticle.setOrigin(f1, f2);
        i++;
      }
    }
  }

  public void start()
  {
    this.firstUpdate = true;
    this.allowCompletion = false;
    restart();
  }

  public void update(float paramFloat)
  {
    this.accumulator += Math.min(paramFloat * 1000.0F, 250.0F);
    if (this.accumulator < 1.0F)
      return;
    int i = (int)this.accumulator;
    this.accumulator -= i;
    boolean[] arrayOfBoolean = this.active;
    int j = this.activeCount;
    int k = arrayOfBoolean.length;
    for (int m = 0; m < k; m++)
      if ((arrayOfBoolean[m] != 0) && (!updateParticle(this.particles[m], paramFloat, i)))
      {
        arrayOfBoolean[m] = false;
        j--;
      }
    this.activeCount = j;
    if (this.delayTimer < this.delay)
    {
      this.delayTimer += i;
      return;
    }
    if (this.firstUpdate)
    {
      this.firstUpdate = false;
      addParticle();
    }
    if (this.durationTimer < this.duration)
      this.durationTimer += i;
    while (true)
    {
      this.emissionDelta = (i + this.emissionDelta);
      float f1 = this.emission + this.emissionDiff * this.emissionValue.getScale(this.durationTimer / this.duration);
      if (f1 > 0.0F)
      {
        float f2 = 1000.0F / f1;
        if (this.emissionDelta >= f2)
        {
          int n = Math.min((int)(this.emissionDelta / f2), this.maxParticleCount - j);
          this.emissionDelta = ((int)(this.emissionDelta - f2 * n));
          this.emissionDelta = ((int)(this.emissionDelta % f2));
          addParticles(n);
        }
      }
      if (j >= this.minParticleCount)
        break;
      addParticles(this.minParticleCount - j);
      return;
      if ((!this.continuous) || (this.allowCompletion))
        break;
      restart();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter
 * JD-Core Version:    0.6.2
 */