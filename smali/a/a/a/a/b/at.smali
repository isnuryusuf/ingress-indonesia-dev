.class final La/a/a/a/b/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/bj;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/a/a/a/b/bj",
        "<TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field c:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field d:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-wide p1, p0, La/a/a/a/b/at;->a:J

    .line 849
    iput-object p3, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    .line 850
    const/high16 v0, -0x4000

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 851
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 986
    iget-wide v0, p0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 944
    iget v0, p0, La/a/a/a/b/at;->e:I

    and-int/lit16 v0, v0, -0x100

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 945
    iget v0, p0, La/a/a/a/b/at;->e:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 946
    return-void
.end method

.method final a(La/a/a/a/b/at;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b/at",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 905
    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 906
    iput-object p1, p0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 907
    return-void
.end method

.method final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 889
    if-eqz p1, :cond_0

    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 891
    :goto_0
    return-void

    .line 890
    :cond_0
    iget v0, p0, La/a/a/a/b/at;->e:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    goto :goto_0
.end method

.method final b()La/a/a/a/b/at;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 859
    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_0
.end method

.method final b(La/a/a/a/b/at;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b/at",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 913
    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 914
    iput-object p1, p0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 915
    return-void
.end method

.method final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 897
    if-eqz p1, :cond_0

    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 899
    :goto_0
    return-void

    .line 898
    :cond_0
    iget v0, p0, La/a/a/a/b/at;->e:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    goto :goto_0
.end method

.method final c()La/a/a/a/b/at;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 868
    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_0
.end method

.method final c(La/a/a/a/b/at;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b/at",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 921
    iget v0, p0, La/a/a/a/b/at;->e:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 922
    iput-object p1, p0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 923
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, La/a/a/a/b/at;->l()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method final d(La/a/a/a/b/at;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b/at",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 929
    iget v0, p0, La/a/a/a/b/at;->e:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 930
    iput-object p1, p0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 931
    return-void
.end method

.method final d()Z
    .locals 2

    .prologue
    .line 875
    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 2

    .prologue
    .line 882
    iget v0, p0, La/a/a/a/b/at;->e:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1021
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 1023
    :goto_0
    return v0

    .line 1022
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1023
    iget-wide v2, p0, La/a/a/a/b/at;->a:J

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final f()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, La/a/a/a/b/at;->e:I

    int-to-byte v0, v0

    return v0
.end method

.method final g()V
    .locals 2

    .prologue
    .line 950
    iget v0, p0, La/a/a/a/b/at;->e:I

    and-int/lit16 v0, v0, -0x100

    iget v1, p0, La/a/a/a/b/at;->e:I

    int-to-byte v1, v1

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 951
    return-void
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 824
    iget-wide v0, p0, La/a/a/a/b/at;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 955
    iget v0, p0, La/a/a/a/b/at;->e:I

    and-int/lit16 v0, v0, -0x100

    iget v1, p0, La/a/a/a/b/at;->e:I

    int-to-byte v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/at;->e:I

    .line 956
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1026
    iget-wide v0, p0, La/a/a/a/b/at;->a:J

    invoke-static {v0, v1}, La/a/a/a/e;->b(J)I

    move-result v1

    iget-object v0, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method final i()La/a/a/a/b/at;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 964
    iget-object v0, p0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 965
    iget v1, p0, La/a/a/a/b/at;->e:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    iget v1, v0, La/a/a/a/b/at;->e:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_0

    .line 966
    :cond_0
    return-object v0
.end method

.method final j()La/a/a/a/b/at;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 976
    iget v1, p0, La/a/a/a/b/at;->e:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    iget v1, v0, La/a/a/a/b/at;->e:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_0

    .line 977
    :cond_0
    return-object v0
.end method

.method public final k()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 981
    iget-wide v0, p0, La/a/a/a/b/at;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final l()La/a/a/a/b/at;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1009
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/at;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    iget-wide v1, p0, La/a/a/a/b/at;->a:J

    iput-wide v1, v0, La/a/a/a/b/at;->a:J

    .line 1015
    iget-object v1, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    iput-object v1, v0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    .line 1016
    iget v1, p0, La/a/a/a/b/at;->e:I

    iput v1, v0, La/a/a/a/b/at;->e:I

    .line 1017
    return-object v0

    .line 1012
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    .line 1002
    iput-object p1, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    .line 1003
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, La/a/a/a/b/at;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
