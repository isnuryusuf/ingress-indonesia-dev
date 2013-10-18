.class final Lcom/nianticproject/ingress/common/playerprofile/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/bi;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/nianticproject/ingress/common/playerprofile/bw;

.field private c:Lcom/nianticproject/ingress/shared/rpc/q;

.field private d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

.field private e:Lcom/nianticproject/ingress/common/playerprofile/j;

.field private f:Z

.field private g:J

.field private h:Lcom/nianticproject/ingress/common/playerprofile/bw;

.field private i:Lcom/nianticproject/ingress/shared/rpc/q;

.field private j:I

.field private final k:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/a/c/jc;->c()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->k:Ljava/util/LinkedHashSet;

    .line 46
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/ae;->b()V

    .line 49
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->f:Z

    .line 137
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 126
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->h:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->g:J

    .line 131
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/q;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->c:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 142
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->c:Lcom/nianticproject/ingress/shared/rpc/q;

    .line 143
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/q;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 190
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->c:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->h:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 191
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->i:Lcom/nianticproject/ingress/shared/rpc/q;

    .line 192
    iput p2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->j:I

    .line 193
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .line 181
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->h:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 185
    return-void
.end method

.method public final a()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    sget-object v3, Lcom/nianticproject/ingress/common/playerprofile/bw;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->f:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->f:Z

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->g:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->k()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->g:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    float-to-long v4, v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->c:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 75
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->c:Lcom/nianticproject/ingress/shared/rpc/q;

    .line 76
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    .line 77
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->c:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->h:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 78
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->i:Lcom/nianticproject/ingress/shared/rpc/q;

    .line 79
    iput v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->j:I

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->g:J

    .line 82
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 83
    iput-boolean v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->f:Z

    .line 84
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->a:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 89
    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->c:Lcom/nianticproject/ingress/shared/rpc/q;

    .line 90
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/ae;->i()V

    .line 91
    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 93
    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 94
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/nianticproject/ingress/common/playerprofile/bw;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    return-object v0
.end method

.method public final f()Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    return-object v0
.end method

.method public final g()Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->b()Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;)Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final h()Lcom/nianticproject/ingress/shared/rpc/q;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->c:Lcom/nianticproject/ingress/shared/rpc/q;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->a:Lcom/nianticproject/ingress/common/playerprofile/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->h:Lcom/nianticproject/ingress/common/playerprofile/bw;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->i:Lcom/nianticproject/ingress/shared/rpc/q;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->j:I

    .line 155
    return-void
.end method

.method public final j()Lcom/nianticproject/ingress/common/playerprofile/bw;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->h:Lcom/nianticproject/ingress/common/playerprofile/bw;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/a/c/jc;->c()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->d:Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-static {v0}, Lcom/google/a/c/eq;->b(Ljava/lang/Iterable;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ae;->j:I

    return v0
.end method
