.class final Lcom/nianticproject/ingress/multiphotos/i;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/i;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/i;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)Lcom/nianticproject/ingress/multiphotos/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/a;->a()V

    .line 182
    const/4 v0, 0x0

    return v0
.end method
