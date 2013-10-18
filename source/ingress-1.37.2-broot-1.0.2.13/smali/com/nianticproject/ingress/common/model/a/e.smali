.class public Lcom/nianticproject/ingress/common/model/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/model/a/h;

.field private final c:Lcom/nianticproject/ingress/common/u/ah;

.field private final d:Lcom/google/a/a/bw;

.field private final e:Lcom/nianticproject/ingress/common/x/i;

.field private f:J

.field private final g:J

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/model/a/e;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/a/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/model/a/h;Lcom/nianticproject/ingress/common/u/ah;Lcom/google/a/a/bw;Lcom/nianticproject/ingress/common/x/i;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x7530

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/a/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    .line 183
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->d:Lcom/google/a/a/bw;

    .line 184
    iput-object p4, p0, Lcom/nianticproject/ingress/common/model/a/e;->e:Lcom/nianticproject/ingress/common/x/i;

    .line 185
    iput-object p2, p0, Lcom/nianticproject/ingress/common/model/a/e;->c:Lcom/nianticproject/ingress/common/u/ah;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->g:J

    .line 187
    invoke-virtual {p3}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->h:J

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->e:Lcom/nianticproject/ingress/common/x/i;

    new-instance v1, Lcom/nianticproject/ingress/common/model/a/f;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/model/a/f;-><init>(Lcom/nianticproject/ingress/common/model/a/e;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;JJ)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/a/h;Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    invoke-direct {v0, p2, p3}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    new-instance v1, Lcom/nianticproject/ingress/common/u/ai;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    move-result-object v0

    invoke-static {}, Lcom/google/a/a/bw;->b()Lcom/google/a/a/bw;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;-><init>(Lcom/nianticproject/ingress/common/model/a/h;Lcom/nianticproject/ingress/common/u/ah;Lcom/google/a/a/bw;Lcom/nianticproject/ingress/common/x/i;)V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/model/a/e;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/model/a/e;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/nianticproject/ingress/common/model/a/h;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/model/a/j;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/nianticproject/ingress/common/model/a/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/model/a/i;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 266
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/a/h;->a(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/nianticproject/ingress/common/u/ah;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->c:Lcom/nianticproject/ingress/common/u/ah;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/nianticproject/ingress/common/model/a/g;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/model/a/g;-><init>(Lcom/nianticproject/ingress/common/model/a/e;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/g;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 412
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/google/a/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->d:Lcom/google/a/a/bw;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/model/a/e;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/a/e;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/model/a/i;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 295
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 296
    if-nez v0, :cond_0

    .line 300
    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/missions/ck;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 247
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->g:J

    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/a/e;->d:Lcom/google/a/a/bw;

    invoke-virtual {v2}, Lcom/google/a/a/bw;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/model/a/e;->h:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lcom/nianticproject/ingress/common/model/a/i;->a(Ljava/lang/String;J)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    invoke-interface {v1, p1, v0}, Lcom/nianticproject/ingress/common/model/a/h;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/model/a/j;)Z

    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->d:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->f:J

    .line 254
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/a/i;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/a/h;->a()V

    .line 237
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    invoke-static {v0}, Lcom/nianticproject/ingress/common/model/a/i;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v2

    .line 216
    if-nez v2, :cond_2

    .line 217
    sget-object v2, Lcom/nianticproject/ingress/common/model/a/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Ignoring invalid key name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/model/a/i;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/model/a/j;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    iget-object v3, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    invoke-interface {v3, v2, v0}, Lcom/nianticproject/ingress/common/model/a/h;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/model/a/j;)Z

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->d:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/model/a/e;->f:J

    goto :goto_1

    .line 227
    :catch_0
    move-exception v3

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Ignoring an invalid, probably old, player storage value. Key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/a/e;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/a/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 312
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/nianticproject/ingress/common/model/a/i;)J
    .locals 2
    .parameter

    .prologue
    .line 343
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/e;->b:Lcom/nianticproject/ingress/common/model/a/h;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/a/h;->a(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/j;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 328
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method public final b(Lcom/nianticproject/ingress/common/model/a/i;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;
    .locals 1
    .parameter

    .prologue
    .line 386
    const-class v0, Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 388
    if-nez v0, :cond_0

    .line 389
    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    .line 392
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ck;

    goto :goto_0
.end method
