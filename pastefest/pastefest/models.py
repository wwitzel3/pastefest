from sqlalchemy import (
    Column,
    Integer,
    Text,
    )

from sqlalchemy.ext.declarative import declarative_base

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker,
    )

from zope.sqlalchemy import ZopeTransactionExtension

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base()

class Paste(Base):
    __tablename__ = 'pastes'
    id = Column(Integer, primary_key=True)
    raw = Column(Text)
    desc = Column(Text)

    def __init__(self, raw, desc, private=False):
        self.raw = raw
        self.desc = desc
        self.private = private

    def html(self, linenos=True):
        from pygments import highlight
        from pygments.lexers import guess_lexer
        from pygments.formatters import HtmlFormatter

        lexer = guess_lexer(self.raw)
        formatter = HtmlFormatter(linenos='table', cssclass="highlight")
        return highlight(self.raw, lexer, formatter)

