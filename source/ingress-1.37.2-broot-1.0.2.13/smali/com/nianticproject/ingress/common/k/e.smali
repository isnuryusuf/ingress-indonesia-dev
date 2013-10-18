.class final Lcom/nianticproject/ingress/common/k/e;
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
        "Lcom/badlogic/gdx/graphics/Texture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 369
    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/nianticproject/ingress/common/k/c;->h:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    const/4 v0, 0x0

    sput-object v0, Lcom/nianticproject/ingress/common/k/c;->h:Lcom/badlogic/gdx/graphics/Texture;

    sput-object p1, Lcom/nianticproject/ingress/common/k/c;->h:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method
