.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "SourceFile"


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;)V
    .locals 1
    .parameter

    .prologue
    .line 969
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 970
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    .line 971
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1
    .parameter

    .prologue
    .line 963
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 964
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->active:Z

    if-nez v0, :cond_0

    .line 966
    :goto_0
    return-void

    .line 965
    :cond_0
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    goto :goto_0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .parameter

    .prologue
    .line 957
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 958
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->active:Z

    if-nez v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 959
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

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

.method public setValue(F)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    .line 954
    return-void
.end method
