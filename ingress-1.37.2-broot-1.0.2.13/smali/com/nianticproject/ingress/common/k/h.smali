.class final Lcom/nianticproject/ingress/common/k/h;
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
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/nianticproject/ingress/common/k/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
