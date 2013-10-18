.class public final Lcom/nianticproject/ingress/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:Lcom/nianticproject/ingress/o/h;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/nianticproject/ingress/o/i;->a:Landroid/graphics/Bitmap;

    .line 78
    iput-object p2, p0, Lcom/nianticproject/ingress/o/i;->b:Landroid/net/Uri;

    .line 79
    iput-object p3, p0, Lcom/nianticproject/ingress/o/i;->c:Landroid/net/Uri;

    .line 80
    sget-object v0, Lcom/nianticproject/ingress/o/h;->a:Lcom/nianticproject/ingress/o/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/o/i;->d:Lcom/nianticproject/ingress/o/h;

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/nianticproject/ingress/o/h;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/nianticproject/ingress/o/i;->a:Landroid/graphics/Bitmap;

    .line 91
    iput-object p1, p0, Lcom/nianticproject/ingress/o/i;->b:Landroid/net/Uri;

    .line 92
    iput-object v0, p0, Lcom/nianticproject/ingress/o/i;->c:Landroid/net/Uri;

    .line 93
    iput-object p2, p0, Lcom/nianticproject/ingress/o/i;->d:Lcom/nianticproject/ingress/o/h;

    .line 94
    return-void
.end method
