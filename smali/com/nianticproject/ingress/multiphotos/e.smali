.class final Lcom/nianticproject/ingress/multiphotos/e;
.super Landroid/support/v4/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/c/c",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/e;->a:Lcom/nianticproject/ingress/multiphotos/d;

    invoke-direct {p0, p2}, Landroid/support/v4/c/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 39
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
