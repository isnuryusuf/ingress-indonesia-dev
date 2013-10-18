.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    .line 41
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    .line 42
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->free(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
