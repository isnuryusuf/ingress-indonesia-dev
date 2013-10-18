.class final Lcom/nianticproject/ingress/common/missions/tutorial/g;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/f;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

.field private final b:Lcom/nianticproject/ingress/common/scanner/e;

.field private c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/scanner/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const-string/jumbo v0, "HackIntroState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 29
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->b:Lcom/nianticproject/ingress/common/scanner/e;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->showArrowLine:Z

    .line 37
    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/h;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/h;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/g;Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->b:Lcom/nianticproject/ingress/common/scanner/e;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/scanner/e;->a(Lcom/nianticproject/ingress/common/scanner/f;)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/SingleActionTutorialConstraints;

    sget-object v2, Lcom/nianticproject/ingress/common/missions/tutorial/t;->a:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/missions/tutorial/SingleActionTutorialConstraints;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/t;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V

    .line 54
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->g()V

    .line 66
    return-void
.end method

.method public final u_()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/g;->b:Lcom/nianticproject/ingress/common/scanner/e;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/scanner/e;->b(Lcom/nianticproject/ingress/common/scanner/f;)V

    .line 59
    return-void
.end method
