.class final Landroid/support/v4/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/k;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/k;

    iput p2, p0, Landroid/support/v4/app/m;->a:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/k;

    iget-object v1, v1, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/support/v4/app/m;->a:I

    iget v2, p0, Landroid/support/v4/app/m;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/k;->a(II)Z

    .line 474
    return-void
.end method
