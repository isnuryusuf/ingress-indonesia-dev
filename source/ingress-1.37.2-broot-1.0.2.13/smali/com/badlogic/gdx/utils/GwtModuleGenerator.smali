.class public Lcom/badlogic/gdx/utils/GwtModuleGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static gatherJavaFiles(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".svn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 36
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 37
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 38
    invoke-static {v3, p1, p2, p3}, Lcom/badlogic/gdx/utils/GwtModuleGenerator;->gatherJavaFiles(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Set;Ljava/util/Map;Z)V

    .line 36
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->extension()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "java"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duplicate!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    :cond_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Excludes -------------------------------------------------"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    const-string/jumbo v3, "../backends/gdx-backends-gwt/src/com/badlogic/gdx/backends/gwt/emu/com/badlogic/gdx"

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v6}, Lcom/badlogic/gdx/utils/GwtModuleGenerator;->gatherJavaFiles(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Set;Ljava/util/Map;Z)V

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "GdxBuild.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string/jumbo v0, "GdxNativesLoader.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string/jumbo v0, "GwtModuleGenerator.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string/jumbo v0, "SharedLibraryLoader.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string/jumbo v0, "Gdx2DPixmap.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    const-string/jumbo v0, "PixmapIO.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string/jumbo v0, "ETC1.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v0, "ETC1TextureData.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string/jumbo v0, "ScreenUtils.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v0, "RemoteInput.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string/jumbo v0, "RemoteSender.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string/jumbo v0, "TiledLoader.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string/jumbo v0, "TileMapRendererLoader.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string/jumbo v0, "AtomicQueue.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const-string/jumbo v0, "LittleEndianInputStream.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string/jumbo v0, "PauseableThread.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string/jumbo v0, "DesktopClipboard.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string/jumbo v0, "AndroidClipboard.java"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 90
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "Includes -------------------------------------------------"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    new-instance v4, Lcom/badlogic/gdx/files/FileHandle;

    const-string/jumbo v5, "src"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v3, v6}, Lcom/badlogic/gdx/utils/GwtModuleGenerator;->gatherJavaFiles(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Set;Ljava/util/Map;Z)V

    .line 92
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "excluded \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "diff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 105
    const-string/jumbo v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 106
    new-instance v2, Lcom/badlogic/gdx/utils/XmlWriter;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/XmlWriter;-><init>(Ljava/io/Writer;)V

    .line 107
    const-string/jumbo v0, "module"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    const-string/jumbo v4, "rename-to"

    const-string/jumbo v5, "com.badlogic.gdx"

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/XmlWriter;->attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    .line 108
    const-string/jumbo v0, "inherits"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "com.esotericsoftware.tablelayout"

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/XmlWriter;->attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    .line 109
    const-string/jumbo v0, "source"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    const-string/jumbo v4, "path"

    const-string/jumbo v5, "gdx"

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/XmlWriter;->attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    .line 110
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\\"

    const-string/jumbo v6, "/"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "src/com/badlogic/gdx/"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string/jumbo v5, "include"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6, v0}, Lcom/badlogic/gdx/utils/XmlWriter;->attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    goto :goto_1

    .line 115
    :cond_2
    const-string/jumbo v0, "include"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "graphics/g2d/Animation.java"

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/XmlWriter;->attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    .line 116
    const-string/jumbo v0, "include"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "graphics/g3d/Animation.java"

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/XmlWriter;->attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    .line 117
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    .line 118
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    .line 119
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlWriter;->close()V

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    const-string/jumbo v2, "src/com/badlogic/gdx.gwt.xml"

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method
