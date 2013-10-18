.class final Lcom/nianticproject/ingress/common/itemupgrade/g;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/itemupgrade/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    return-void
.end method


# virtual methods
.method public final act(F)V
    .locals 1
    .parameter

    .prologue
    .line 512
    :try_start_0
    const-string/jumbo v0, "DeployResonatorScannerUi.contents.act"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 513
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 514
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->g(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->h(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z

    .line 516
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->c()V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->i(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->j(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z

    .line 520
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/g;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->k(Lcom/nianticproject/ingress/common/itemupgrade/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
