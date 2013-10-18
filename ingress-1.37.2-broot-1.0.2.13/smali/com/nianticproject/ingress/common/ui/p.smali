.class final Lcom/nianticproject/ingress/common/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/b/o",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/o;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->d()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    return-void
.end method
