.class public Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# instance fields
.field public narration:Lcom/nianticproject/ingress/common/c/bs;

.field public showArrowLine:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 28
    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->windowWidthPercent:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->windowHeightPercent:F

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->windowAlignment:I

    .line 31
    const-string/jumbo v0, "tutorial"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->windowStyleName:Ljava/lang/String;

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->padTop:I

    .line 33
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 34
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->shrinkHeightToFit:Z

    .line 35
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->showArrowLine:Z

    .line 36
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->fullModal:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->narration:Lcom/nianticproject/ingress/common/c/bs;

    .line 38
    return-void
.end method
