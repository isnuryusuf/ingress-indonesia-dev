.class final Lcom/nianticproject/ingress/ui/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/q;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/q;-><init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 966
    :goto_0
    return-void

    .line 963
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/q;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)V

    goto :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
