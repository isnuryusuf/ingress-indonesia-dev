.class Lcom/nianticproject/ingress/common/missions/z;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;

.field private final c:Lcom/nianticproject/ingress/common/missions/aq;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;ILcom/nianticproject/ingress/common/missions/aq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/z;->a:Lcom/nianticproject/ingress/common/missions/a;

    .line 821
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    .line 822
    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/z;->c:Lcom/nianticproject/ingress/common/missions/aq;

    .line 823
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 827
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 828
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/z;->c:Lcom/nianticproject/ingress/common/missions/aq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Z)V

    .line 829
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/z;->c:Lcom/nianticproject/ingress/common/missions/aq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Z)V

    .line 834
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 835
    return-void
.end method
