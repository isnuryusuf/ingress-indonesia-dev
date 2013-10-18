.class final Lcom/nianticproject/ingress/common/missions/tutorial/a;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# static fields
.field static final a:Lcom/nianticproject/ingress/common/w/d;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/missions/tutorial/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "XM_FIRED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/a;->a:Lcom/nianticproject/ingress/common/w/d;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    const-string/jumbo v0, "FireXmpActionState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/a;->b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/b;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/b;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/a;)V

    .line 39
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/a;->b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 40
    return-void
.end method
