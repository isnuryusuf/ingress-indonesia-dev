.class public final Lcom/nianticproject/ingress/common/model/ad;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/model/k;

.field private final b:Lcom/nianticproject/ingress/common/g/e;

.field private final c:Lcom/nianticproject/ingress/common/scanner/k;

.field private final d:Lcom/nianticproject/ingress/common/model/e;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/model/e;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const-string/jumbo v0, "updateVacuumedEnergyGlobs"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 32
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->b:Lcom/nianticproject/ingress/common/g/e;

    .line 33
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->c:Lcom/nianticproject/ingress/common/scanner/k;

    .line 34
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->d:Lcom/nianticproject/ingress/common/model/e;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/model/ad;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/model/ad;->e:I

    packed-switch v0, :pswitch_data_0

    .line 58
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/ad;->d:Lcom/nianticproject/ingress/common/model/e;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/model/e;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Ljava/util/Collection;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->a:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/ad;->d:Lcom/nianticproject/ingress/common/model/e;

    iget-wide v1, v1, Lcom/nianticproject/ingress/common/model/e;->c:J

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/k;->a(J)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/ad;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/ad;->d:Lcom/nianticproject/ingress/common/model/e;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/model/e;->b:Ljava/util/Set;

    invoke-static {}, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->m()Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v2

    invoke-static {v1}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/model/f;->a()Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
