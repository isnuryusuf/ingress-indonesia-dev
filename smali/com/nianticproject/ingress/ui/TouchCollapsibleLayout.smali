.class public Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;
.super Lcom/nianticproject/ingress/ui/CollapsibleLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/ui/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/ui/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/ui/ai;-><init>(Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/ai;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/ui/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/ui/ai;-><init>(Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/ai;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/ui/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/ui/ai;-><init>(Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/ai;

    .line 33
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 81
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    return v3

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/ai;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v3, v3}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a(ZZ)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/ai;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
