.class final Lcom/nianticproject/ingress/common/missions/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/ev;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;-><init>()V

    .line 30
    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->x:Lcom/nianticproject/ingress/common/c/bs;

    iput-object v1, v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->narration:Lcom/nianticproject/ingress/common/c/bs;

    .line 31
    new-instance v1, Lcom/nianticproject/ingress/common/missions/eb;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/missions/eb;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    return-object v1
.end method
