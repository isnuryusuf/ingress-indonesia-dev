.class final Lcom/nianticproject/ingress/multiphotos/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/j;->b:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/j;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/j;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
