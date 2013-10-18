.class final Lcom/nianticproject/ingress/common/missions/tutorial/p;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/missions/tutorial/x;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const-string/jumbo v0, "ScannerMapIntro"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/p;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/q;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/q;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/p;)V

    .line 44
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/p;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 45
    return-void
.end method
