.class public final Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;->bar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 166
    return-void
.end method
