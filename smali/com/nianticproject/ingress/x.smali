.class final Lcom/nianticproject/ingress/x;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/y;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/y;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/x;->a:Lcom/nianticproject/ingress/y;

    .line 138
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/nianticproject/ingress/x;->a:Lcom/nianticproject/ingress/y;

    invoke-interface {v1}, Lcom/nianticproject/ingress/y;->b()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/x;->a:Lcom/nianticproject/ingress/y;

    invoke-interface {v0}, Lcom/nianticproject/ingress/y;->c()V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/x;->a:Lcom/nianticproject/ingress/y;

    invoke-interface {v0}, Lcom/nianticproject/ingress/y;->a()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
