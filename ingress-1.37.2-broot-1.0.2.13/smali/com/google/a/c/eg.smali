.class public final Lcom/google/a/c/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/a/c/lk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/lk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/a/c/eh;

    invoke-direct {v0}, Lcom/google/a/c/eh;-><init>()V

    sput-object v0, Lcom/google/a/c/eg;->a:Lcom/google/a/c/lk;

    .line 123
    new-instance v0, Lcom/google/a/c/ek;

    invoke-direct {v0}, Lcom/google/a/c/ek;-><init>()V

    sput-object v0, Lcom/google/a/c/eg;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/lj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/google/a/c/eg;->a:Lcom/google/a/c/lk;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/a/c/lj;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/a/c/lj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v0, Lcom/google/a/c/ej;

    invoke-direct {v0, p0}, Lcom/google/a/c/ej;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;)Lcom/google/a/c/lj;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lcom/google/a/c/lj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    instance-of v0, p0, Lcom/google/a/c/lj;

    if-eqz v0, :cond_0

    .line 155
    check-cast p0, Lcom/google/a/c/lj;

    .line 157
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/c/el;

    invoke-direct {v0, p0}, Lcom/google/a/c/el;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/a/c/lj;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/google/a/c/lj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1062
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/google/a/c/eg;->a([Ljava/lang/Object;III)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lcom/google/a/c/lk;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/google/a/c/lk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1074
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 1075
    add-int v0, p1, p2

    .line 1078
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/a/a/an;->a(III)V

    .line 1079
    invoke-static {p3, p2}, Lcom/google/a/a/an;->b(II)I

    .line 1080
    if-nez p2, :cond_1

    .line 1081
    sget-object v0, Lcom/google/a/c/eg;->a:Lcom/google/a/c/lk;

    .line 1089
    :goto_1
    return-object v0

    .line 1074
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1089
    :cond_1
    new-instance v0, Lcom/google/a/c/ei;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/a/c/ei;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/a/a/aa;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lcom/google/a/a/aa",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v0, Lcom/google/a/c/en;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/en;-><init>(Ljava/util/Iterator;Lcom/google/a/a/aa;)V

    return-object v0
.end method

.method static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1348
    const-string/jumbo v0, "no calls to next() since the last call to remove()"

    invoke-static {p0, v0}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 1349
    return-void
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 360
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/a/a/ao",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    .line 230
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/a/a/ao;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 233
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p1}, Lcom/google/a/a/ap;->a(Ljava/lang/Object;)Lcom/google/a/a/ao;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/a/c/eg;->c(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, Lcom/google/a/a/ap;->a(Ljava/util/Collection;)Lcom/google/a/a/ao;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 265
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    :cond_1
    :goto_0
    return v0

    .line 269
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 275
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/Iterator;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return v0
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/a/a/ao;)Lcom/google/a/c/lj;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/a/a/ao",
            "<-TT;>;)",
            "Lcom/google/a/c/lj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    new-instance v0, Lcom/google/a/c/em;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/em;-><init>(Ljava/util/Iterator;Lcom/google/a/a/ao;)V

    return-object v0
.end method

.method static b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/google/a/c/eg;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p1}, Lcom/google/a/a/ap;->a(Ljava/util/Collection;)Lcom/google/a/a/ao;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/ap;->a(Lcom/google/a/a/ao;)Lcom/google/a/a/ao;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lcom/google/a/c/as;->a:Lcom/google/a/a/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/google/a/a/ab;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/a/a/ao",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 720
    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/a/a/ao;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static d(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 299
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    return-object v0

    .line 303
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "expected one element but was: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const-string/jumbo v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/a/a/ao",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 730
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 733
    invoke-interface {p1, v0}, Lcom/google/a/a/ao;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const/4 v0, 0x0

    .line 737
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 901
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1046
    :cond_0
    return-void
.end method
