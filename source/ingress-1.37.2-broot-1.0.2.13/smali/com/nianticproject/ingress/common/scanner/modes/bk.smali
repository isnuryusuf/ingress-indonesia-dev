.class final Lcom/nianticproject/ingress/common/scanner/modes/bk;
.super Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nianticproject/ingress/common/h/l;

.field private final d:Lcom/nianticproject/ingress/common/ui/t;

.field private final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/t;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    const-string/jumbo v0, "Recycle: Portal Key?"

    const-string/jumbo v1, "[ This object will be destroyed ]"

    const-string/jumbo v2, "CONFIRM"

    const-string/jumbo v3, "CANCEL"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->a:Ljava/lang/String;

    .line 586
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->b:Lcom/nianticproject/ingress/common/h/l;

    .line 587
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->d:Lcom/nianticproject/ingress/common/ui/t;

    .line 588
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 591
    const/high16 v0, 0x3e80

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 592
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->b:Lcom/nianticproject/ingress/common/h/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V

    .line 597
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->d:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 598
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bk;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v1, 0x3e80

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 604
    return-void
.end method
