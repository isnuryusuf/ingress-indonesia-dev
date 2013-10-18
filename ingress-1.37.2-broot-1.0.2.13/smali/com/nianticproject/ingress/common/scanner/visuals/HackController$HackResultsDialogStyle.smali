.class public Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# static fields
.field private static final WINDOW_ALIGNMENT:I = 0x4

.field private static final WINDOW_WIDTH:F = 0.94f


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 131
    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->windowWidthPercent:F

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->windowHeightPercent:F

    .line 133
    const/4 v0, 0x4

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->windowAlignment:I

    .line 134
    const/high16 v0, 0x4230

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->padBottom:I

    .line 135
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->touchOutsideToClose:Z

    .line 136
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->touchInsideToClose:Z

    .line 137
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->shrinkHeightToFit:Z

    .line 138
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 139
    return-void
.end method
