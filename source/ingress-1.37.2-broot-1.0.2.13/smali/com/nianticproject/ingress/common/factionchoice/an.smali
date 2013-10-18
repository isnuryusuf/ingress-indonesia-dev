.class final Lcom/nianticproject/ingress/common/factionchoice/an;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/al;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/al;Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->b:Lcom/nianticproject/ingress/common/factionchoice/al;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 288
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/ap;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->b:Lcom/nianticproject/ingress/common/factionchoice/al;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/factionchoice/al;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t choose "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->b:Lcom/nianticproject/ingress/common/factionchoice/al;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/factionchoice/al;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->b:Lcom/nianticproject/ingress/common/factionchoice/al;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/al;->b:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->c(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/factionchoice/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/factionchoice/az;->b()V

    .line 294
    :goto_0
    return-void

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/an;->b:Lcom/nianticproject/ingress/common/factionchoice/al;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/al;->b:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->c(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/factionchoice/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/factionchoice/az;->a()V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
