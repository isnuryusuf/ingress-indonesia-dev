.class public Lcom/nianticproject/ingress/common/d;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/a;

.field private final c:Lcom/nianticproject/ingress/common/model/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/d;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nianticproject/ingress/common/d;->b:Lcom/nianticproject/ingress/common/a;

    .line 39
    iput-object p2, p0, Lcom/nianticproject/ingress/common/d;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 43
    invoke-interface {p2, p0}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "CommPlayerListener"

    return-object v0
.end method

.method public final a(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 98
    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d;->b:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Level up! You are now level %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->a(Lcom/nianticproject/ingress/shared/plext/c;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->c:Lcom/nianticproject/ingress/common/model/z;

    if-ne v0, p7, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d;->b:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "You\'ve been hit and lost %,d XM!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sub-long/2addr v4, p5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->a(Lcom/nianticproject/ingress/shared/plext/c;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final a(JLjava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p3, :cond_0

    .line 88
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/ApGain;

    .line 89
    iget-object v2, p0, Lcom/nianticproject/ingress/common/d;->b:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v3, "Gained %,d AP for %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/ApGain;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/ApGain;->a()Lcom/nianticproject/ingress/shared/model/a;

    move-result-object v0

    sget-object v6, Lcom/nianticproject/ingress/common/e;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/a;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "doing something really awesome! ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/a;->a(Lcom/nianticproject/ingress/shared/plext/c;)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "deploying a Resonator"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "capturing a Portal"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "creating a Link"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "creating a Control Field"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v0, "destroying a Resonator"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "destroying a Link"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "destroying a Control Field"

    goto :goto_1

    :pswitch_7
    const-string/jumbo v0, "creating a Resonator Mod"

    goto :goto_1

    :pswitch_8
    const-string/jumbo v0, "fully powering a Portal"

    goto :goto_1

    :pswitch_9
    const-string/jumbo v0, "hacking an enemy Portal"

    goto :goto_1

    :pswitch_a
    const-string/jumbo v0, "passcode redemption"

    goto :goto_1

    :pswitch_b
    const-string/jumbo v0, "recharging a Resonator"

    goto :goto_1

    :pswitch_c
    const-string/jumbo v0, "remote recharging a Resonator"

    goto :goto_1

    :pswitch_d
    const-string/jumbo v0, "upgrading a Resonator"

    goto :goto_1

    .line 94
    :cond_0
    return-void

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/shared/f;Lcom/nianticproject/ingress/shared/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    sget-object v0, Lcom/nianticproject/ingress/common/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 72
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/d;->b:Lcom/nianticproject/ingress/common/a;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nianticproject/ingress/shared/plext/c;

    const-string/jumbo v3, "Agent ID Confirmed. Welcome "

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/nianticproject/ingress/common/d;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/a;->a(Ljava/util/List;)V

    .line 83
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 112
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
