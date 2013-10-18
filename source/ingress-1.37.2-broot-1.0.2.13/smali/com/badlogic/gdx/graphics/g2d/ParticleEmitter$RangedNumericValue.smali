.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "SourceFile"


# instance fields
.field private lowMax:F

.field private lowMin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowMax()F
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    return v0
.end method

.method public getLowMin()F
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .locals 1
    .parameter

    .prologue
    .line 1022
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1023
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1024
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1025
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1
    .parameter

    .prologue
    .line 1015
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1016
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-nez v0, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1017
    :cond_0
    const-string/jumbo v0, "lowMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1018
    const-string/jumbo v0, "lowMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    goto :goto_0
.end method

.method public newLowValue()F
    .locals 3

    .prologue
    .line 978
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .parameter

    .prologue
    .line 1008
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1009
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-nez v0, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lowMin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lowMax: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLow(F)V
    .locals 0
    .parameter

    .prologue
    .line 982
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 983
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 984
    return-void
.end method

.method public setLow(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 987
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 988
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 989
    return-void
.end method

.method public setLowMax(F)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1005
    return-void
.end method

.method public setLowMin(F)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 997
    return-void
.end method
