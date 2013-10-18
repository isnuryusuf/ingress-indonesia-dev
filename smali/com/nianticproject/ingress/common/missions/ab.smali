.class Lcom/nianticproject/ingress/common/missions/ab;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field private final a:I

.field final synthetic b:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ab;->b:Lcom/nianticproject/ingress/common/missions/a;

    .line 795
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 796
    iput p3, p0, Lcom/nianticproject/ingress/common/missions/ab;->a:I

    .line 797
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 801
    invoke-super {p0}, Lcom/nianticproject/ingress/common/w/g;->a()V

    .line 802
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ab;->b:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/missions/ab;->a:I

    sub-int/2addr v0, v1

    .line 803
    iget v1, p0, Lcom/nianticproject/ingress/common/missions/ab;->a:I

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 804
    rsub-int/lit8 v5, v4, 0x3

    .line 805
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ab;->b:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ab;->b:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/missions/a;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/ab;->b:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/missions/a;->r()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/ab;->b:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/missions/a;->r()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    iget v7, p0, Lcom/nianticproject/ingress/common/missions/ab;->a:I

    invoke-interface {v3, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/missions/a;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;II)V

    .line 808
    return-void
.end method
