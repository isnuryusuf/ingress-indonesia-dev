.class final Lcom/nianticproject/ingress/common/factionchoice/ao;
.super Lcom/nianticproject/ingress/common/ui/elements/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/aj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/ao;->b:Lcom/nianticproject/ingress/common/factionchoice/aj;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/ao;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ao;->b:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->d(Lcom/nianticproject/ingress/common/factionchoice/aj;)V

    .line 308
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/ap;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ao;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t choose "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/ao;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->z:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 314
    :goto_0
    return-void

    .line 313
    :pswitch_1
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->A:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
