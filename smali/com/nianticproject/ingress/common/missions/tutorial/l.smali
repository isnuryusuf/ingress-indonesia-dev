.class final Lcom/nianticproject/ingress/common/missions/tutorial/l;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

.field private final b:Lcom/nianticproject/ingress/common/ac;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/ac;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const-string/jumbo v0, "RequestCameraState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/l;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 36
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/l;->b:Lcom/nianticproject/ingress/common/ac;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/tutorial/l;)Lcom/nianticproject/ingress/common/missions/tutorial/u;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/l;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/tutorial/l;)Lcom/nianticproject/ingress/common/ac;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/l;->b:Lcom/nianticproject/ingress/common/ac;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;-><init>()V

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->showArrowLine:Z

    .line 44
    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/m;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/m;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/l;Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/l;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 77
    return-void
.end method
