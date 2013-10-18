.class final Lcom/nianticproject/ingress/common/j/w;
.super Lcom/nianticproject/ingress/common/w/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/w/ab",
        "<",
        "Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/j/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/j/v;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/w;->a:Lcom/nianticproject/ingress/common/j/v;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/w/ab;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    return-void
.end method
