.class final Lcom/nianticproject/ingress/multiphotos/bh;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticproject/ingress/multiphotos/bi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/nianticproject/ingress/multiphotos/bi;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bh;->a:Ljava/lang/ref/WeakReference;

    .line 93
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/multiphotos/bi;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bh;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/multiphotos/bi;

    return-object v0
.end method
