.class final Lcom/nianticproject/ingress/common/scanner/dr;
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
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    sput-object p1, Lcom/nianticproject/ingress/common/scanner/ag;->r:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method
